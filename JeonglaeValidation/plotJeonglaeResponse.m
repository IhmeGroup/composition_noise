function[] = plotValidationData()
	load('JeonglaeData.mat');

	close all;
	h5a = figure();
	set(h5a, 'Position', 1.5*[0 0 600, 500]);

	h = 0.225;%figure height
	w = 0.35;%figure width
	lw = 4;%line width for plotting

%	Subplot 1
	subplot('Position', [0.10 0.725 w h]);
	plot(OMEGA, abs(TRANS(1,:,1)), 'b-', 'LineWidth', lw); 
	hold on;
	plot(OMEGA, abs(TRANS(2,:,1)), 'r--', 'LineWidth', lw);
	plot(OMEGA, abs(TRANS(3,:,1)), 'k:', 'LineWidth', lw);
	xlabel('$He$', 'Interpreter', 'laTeX', 'FontSize', 18, 'FontName', 'Times');
	ylabel('$|\pi_b^+ \slash \xi_a|$', 'FontSize', 18, 'FontName', 'Times', 'Interpreter','LaTeX');
	title('$(a)$', 'FontSize', 18, 'FontName', 'Times', 'FontWeight', 'Normal','Interpreter', 'LaTeX');
	set(gca, 'FontSize', 18, 'FontName', 'Times');
	set(gca, 'XTick', 0:0.4:2.0);
	xlim([0 2]);
	grid on;
	plot([OMEGA(1), OMEGA(length(OMEGA))], [abs(TRANS(1,1,1)), abs(TRANS(1,1,1))], 'b--', 'LineWidth', lw); 
	plot([OMEGA(1), OMEGA(length(OMEGA))], [abs(TRANS(2,1,1)), abs(TRANS(2,1,1))], 'r--', 'LineWidth', lw); 
	plot([OMEGA(1), OMEGA(length(OMEGA))], [abs(TRANS(3,1,1)), abs(TRANS(3,1,1))], 'k--', 'LineWidth', lw); 

%	Subplot 2
	subplot('Position', [0.55 0.725 w h]);
	plot(OMEGA, abs(TRANS(1,:,2)), 'b-', 'LineWidth', lw); 
	hold on;
	plot(OMEGA, abs(TRANS(2,:,2)), 'r--', 'LineWidth', lw);
	plot(OMEGA, abs(TRANS(3,:,2)), 'k:', 'LineWidth', lw); 
	hold on;
	xlabel('$He$', 'Interpreter', 'laTeX', 'FontSize', 18, 'FontName', 'Times');
	ylabel('$|\pi_b^- \slash \xi|$', 'FontSize', 18, 'FontName', 'Times', 'Interpreter','LaTeX');
	set(gca, 'FontSize', 18, 'FontName', 'Times');
	xlim([0, 2]);
	set(gca, 'XTick', 0:0.4:2.0);
	grid on;
	title('$(b)$', 'FontSize', 18, 'FontName', 'Times', 'FontWeight', 'Normal','Interpreter', 'LaTeX');
	plot([OMEGA(1), OMEGA(length(OMEGA))], [abs(TRANS(1,1,2)), abs(TRANS(1,1,2))], 'b--', 'LineWidth', lw); 
	plot([OMEGA(1), OMEGA(length(OMEGA))], [abs(TRANS(2,1,2)), abs(TRANS(2,1,2))], 'r--', 'LineWidth', lw); 
	plot([OMEGA(1), OMEGA(length(OMEGA))], [abs(TRANS(3,1,2)), abs(TRANS(3,1,2))], 'k--', 'LineWidth', lw); 

%	Subplot 3
	subplot('Position', [0.10 0.400 w h]);
	phase1 = PHASE(1,:,1);
	phase2 = PHASE(2,:,1);
	phase3 = PHASE(3,:,1);
%	This unwraps the phase functions so there aren't discontinuous jumps every 2*pi
	phase1 = unwrap(phase1);
	phase2 = unwrap(phase2);
	phase3 = unwrap(phase3);
	plot(OMEGA, phase1, 'b-', 'LineWidth', lw); 
	hold on;
	plot(OMEGA, phase2, 'r--', 'LineWidth', lw);
	plot(OMEGA, phase3, 'k:', 'LineWidth', lw);
	xlabel('$He$', 'Interpreter', 'laTeX', 'FontSize', 18, 'FontName', 'Times');
	ylabel('$\angle \pi_b^+ \slash \xi_a$', 'FontSize', 18, 'FontName', 'Times', 'Interpreter', 'LaTeX');
	xlim([0, 2]);
	set(gca, 'Xtick', 0:0.4:2.0);
	set(gca, 'TickLabelInterpreter', 'LaTeX');
	plot([OMEGA(1), OMEGA(length(OMEGA))], [0 0], 'b--', 'LineWidth', lw); 
	plot([OMEGA(1), OMEGA(length(OMEGA))], [0 0], 'r--', 'LineWidth', lw); 
	plot([OMEGA(1), OMEGA(length(OMEGA))], [0 0], 'k--', 'LineWidth', lw); 
	ylim([-7*pi pi]);
	set(gca, 'YTick', -7*pi:pi:pi);
	set(gca, 'YtickLabel', {'$-7\pi$', '$-6\pi$', '$-5\pi$', '$-4\pi$', '$-3\pi$', '$-2\pi$', '$-\pi$', '0', '$\pi$'});
	set(gca, 'FontSize', 18, 'FontName', 'Times');
	grid on;
	title('$(c)$', 'FontSize', 18, 'FontName', 'Times', 'FontWeight', 'Normal','Interpreter', 'LaTeX');

%	Subplot 4
	subplot('Position', [0.55 0.400 w h]);
	phase1 = PHASE(1,:,2);
	phase2 = PHASE(2,:,2);
	phase3 = PHASE(3,:,2);
%	This unwraps the phase functions so there aren't discontinuous jumps every 2*pi
	phase1 = unwrap(phase1);
	phase2 = unwrap(phase2);
	phase3 = unwrap(phase3);

	phase1 = 0*phase1;
	plot(OMEGA, phase1, 'b-', 'LineWidth', lw); 
	hold on;
	plot(OMEGA, phase2, 'r--', 'LineWidth', lw); 
	plot(OMEGA, phase3, 'k:', 'LineWidth', lw);
	xlabel('$He$', 'Interpreter', 'laTeX', 'FontSize', 18, 'FontName', 'Times');
	ylabel('$\angle \pi_b^- \slash \xi_a$', 'FontSize', 18, 'FontName', 'Times', 'Interpreter', 'LaTeX');
	xlim([0, 2]);
	set(gca, 'Xtick', 0:0.4:2.0);
	set(gca, 'TickLabelInterpreter', 'LaTeX');
	ylim([-7*pi, 0])
	set(gca, 'YTick', -7*pi:pi:0);
	set(gca, 'YtickLabel', {'$-7\pi$', '$-6\pi$', '$-5\pi$', '$-4\pi$', '$-3\pi$', '$-2\pi$', '$-\pi$', '0'});
	set(gca, 'FontSize', 18, 'FontName', 'Times');
	grid on;
	title('$(d)$', 'FontSize', 18, 'FontName', 'Times', 'FontWeight', 'Normal','Interpreter', 'LaTeX');

	print -depsc JeonglaeCompositionResponse.eps
end
